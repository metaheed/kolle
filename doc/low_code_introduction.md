## Low code introduction

Kolle low code is an RDF triple-based declarative mapping language. All mapping has a subject, property, and object.

Subject:  It is the name of the model or type. It will always symbol and not nil

Property: It is the name of the attribute and it can be nil for a filter, type declaration, etc

Object: It references the source, it can be nil.

```
Subject        Property        Object 
-------------------------------------
person         f_name          nil
person         l_name          nil 
person         dob             nil
```

The object is nil because the person is the source model.

###### Copy from source to target

Copy data from the producer source model to the consumer-refined model.

```
Subject             Property          Object
------------------------------------------------------------------------
person_refined      first_name        person/f_name
person_refined      last_name         person/l_name
person_refined      full_name         (+ person/f_name " " person/l_name)
person_refined      dob               person/dob
```

Person refined is the consumer model and person is the producer model. During copy either it can be one-to-one, enrichment, and anything else. The full name is the enrichment example. It can be the composition of functions.

```
Subject              Property       Object
----------------------------------------------------------------------------
person_refined       id             (md5 (+ person/fname " " person/l_name))
```

Id is the md5 hash value. The object is a composition of concat and md5 functions.

###### Local variable

When needs enrichment before doing the calculation, the local variable separates the task.

```
Subject                 Property          Object 
----------------------------------------------------------------------
person                  f_name            nil
person                  L_name            nil 

person_refined          full_name         (+ person/f_name person/l_name)
person_refined          id                (md5 this/full_name)
```

For Id property, the source is **this** instead of the person.

###### Adding line comment

```
Subject                 Property          Object 
----------------------------------------------------------------------
person                  f_name            nil
person                  L_name            nil 

-- this is source for id property

person_refined          full_name         (+ person/f_name person/l_name)
person_refined          id                (md5 this/full_name)
```

Only single-line comment support. Here **--** is the comment like SQL editor.

#### Type with triple

Data types can be primitive and logical.

```
Subject             Property          Object
---------------------------------------------------
person_refined      first_name        person/f_name
person_refined      "dob date"        person/dob
```

dob birth is date type. Type converstation will be implicit.

```
Subject             Property                     Object
------------------------------------------------------------
person_refined      "email string array"        person/email
```

Email is array of the string.

###### Define custom type

The primitive type is good for the machine but the logical type simplifies business communication. Define the new micro type bellow.

```
Subject             Property                     Object
---------------------------------------------------------------
"email type"        nil                          (type-of string)
```

Subject Email is a micro type of string. It can be with regular expression and validation functions.

```
Subject              Property                 Object
-----------------------------------------------------------
"email type"         nil                      (type-of string "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,63}$" (< 0 (len "#value")))
```

email is with validation condition, email has regular expression and len will not be blank.

```
Subject              Property                 Object
--------------------------------------------------------------
"email type"         nil                      (type-of string "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,63}$" (< 0 (len "#value")))
person_refined       "email email"            person/email
```

Email is a logical type here. The validation check will be implicit user doesn't need to define as explicitly. Any changes in the email will be reflected in all places.

#### Filter

In Filter, property is nil and Object is function.

```
Subject              Proeprty                  Object
-------------------------------------------------------------------------------  
person_refined       nil                       (where (< 0 (len person/fname)))
```

#### Mergeing

Merging is the same as a filter where Property is nil and Object is function.

```
Subject             Property                    Object 
------------------------------------------------------------------------------
person              f_name                       nil 
person              l_name                       nil 
person              email                        nil 
person              address_id                   nil 

address             id                           nil 
address             post_code                    nil 

person_refined      f_name                       person/f_name
person_refined      post_code                    address/post_code
person_refined      nil                          (join person/address_id address/id)
```

Object function - left-join, join, inner_join

#### Grouping

Grouping is same as filter

```
Subject            Property                        Object
---------------------------------------------------------------------------
person             f_name                          nil
person             age                             nil 

person_age_group   f_name                          person/f_name
person_age_group   nil                             (group_by person/age)
```

group_by is function of Object

#### Concat

Concat multiple source into single target

```
Subject                Property                  Object
-----------------------------------------------------------------------------
person                 f_name                    nil 
person                 l_name                    nil 

customer               cust_name                 nil 
customer               name                      nil 

person_refined         first_name                person/f_name
person_refined         last_name                 person/l_name ;

person_refined         first_name                customer/cust_name
person_refined         last_name                 customer/name
```

persin/f_name and customer/cust_name maps to first_name

#### Macro

Macro generates rdf mapping from RDF mapping. Macro is used for metadata transformation, UDF is used for data transformation

##### Metadata crawling

Source models can be generated from data sources. The data source can be XML, JSON, CSV and EDN.

```
Subject                Property                  Object
-----------------------------------------------------------------------------
person                 nil                      (metadata {:f_name "" :l_name "" dob ""})
```

##### Select all field

Copy all attributes from producer person to consumer person_refined.

```
Subject                Property                  Object
-----------------------------------------------------------------------------
person                 nil                      (metadata {:f_name "" :l_name "" dob ""}) 
person_refined         nil                      (select person)
```

select all field and add new fiels

```
Subject                Property                  Object
-----------------------------------------------------------------------------
person                 nil                      (metadata {:f_name "" :l_name "" dob ""}) 
person_refined         nil                      (select person)
person_refined         full_name                (+ person/f_name " " person/l_name)
```

##### Distinct

Remove duplicate data

```
Subject                Property                  Object
-----------------------------------------------------------------------------
person                 nil                      (metadata {:f_name "" :l_name "" dob ""}) 
person_distinct        nil                      (distinct person)
```

##### Flatten

Convert document model to flatten model

```
Subject                Property                  Object
-----------------------------------------------------------------------------
person_full             nil                     (metadata {:person {:f_name "" :l_name "" dob ""}
                                                           :address [{:post_code 23454 :street "" :city ""}]} ) ```;                   
_                       _                       (flatten person_full);```
```

; is the separator for the triple. the underscore is used idiomatically to indicate that the argument it identifies is not subsequently used.

##### Apply

Apply is used for batch operation when the consumer model needs to remove duplicates from all producer models.

```
Subject                Property                  Object
-----------------------------------------------------------------------------
person_full             nil                     (metadata {:person {:f_name "" :l_name "" dob ""}
                                                           :address [{:post_code 23454 :street "" :city ""}]} ) ```;                   
_                       _                       (flatten person_full);
_                       _                       (apply distinct _raw)```
```

##### Get

Get returns one model from the document or hierarchical model.

```
Subject                Property                  Object
-----------------------------------------------------------------------------
person_full             nil                     (metadata {:person {:f_name "" :l_name "" dob ""}
                                                           :address [{:post_code 23454 :street "" :city ""}]} ) ```;                   
person_raw              nil                     (get person_full person);
address_raw             nil                     (get person_full address)```
```

##### replace-value

Change attribute value from producer model to consumer model.

```
Subject                Property                  Object
-----------------------------------------------------------------------------
person                  nil                     (metadata {:f_name "" :l_name "" gender ""}} )                    
person_refined          first_name              person/f_name
person_refined          last_name               person/l_name
person_refind           gender                  (replace-value person/gender {"m" "male" "f" "female"} "na")
```

##### inxex-of

Accessing array element from producer model.

```
Subject                Property                  Object
-----------------------------------------------------------------------------
person                  nil                     (metadata {:f_name "" :l_name "" gender "" mobile_no ["0176-564"]}} )                  
person_refined          first_name              person/f_name
person_refined          last_name               person/l_name
person_refined           mobile_no              (index-of person/mobile_no 1)
```

Index of returning first element of producer mobile no.

##### Filter in/out

Where+ separates producer data-based condition. Valid data copy to refined model explicitly, invalid data copy to error model implicitly.

```
Subject              Proeprty                  Object
-------------------------------------------------------------------------------  
person               nil                       (metadata {:fname "" :lname "" :age 28})
person_refined       nil                       (where+ (< 0 (len person/fname)))
```

person refined is for the valid data source and error is for invalid datasets.

More complex example

```
Subject              Proeprty                  Object
-------------------------------------------------------------------------------  
person               nil                       (metadata {:fname "" :lname "" :age 28})
person_refined       nil                       (where+ (< 0 (len person/fname)))
```

##### latest value

Keep only latest value from producer model

```
Subject              Proeprty                  Object
-------------------------------------------------------------------------------  
person               nil                       (metadata {:id "" :fname "" :lname "" :age 28})
person_latest        nil                       (latest_by_offset person id)
```

person latest only store latest value from producer person. **id** is primary key for person.

##### Data quality rule

Data quality rule is used to copy data from source to target model. 

```
Subject        Property        Object 
-------------------------------------
party_raw      id              nil
party_raw      f_name          nil
party_raw      l_name          nil
party_raw      age             nil
                      
party_refined  nil            (select party_raw/*)
party_refined  age            party_raw/age
party_refined  nil            (assoc-dv-attr id party_raw/id)
party_refined  nil            (where+ (contain? \"1, 2, 3\" party_raw/id))
party_refined  nil            (where+ (length 4 party_raw/f_name))
party_refined  nil            (where+ (!=null party_raw/f_name party_raw/l_name))
party_refined  nil            (where+ (< 4 party_raw/l_name))
```

where+ is used with different attribute to apply different data quality rule. 

