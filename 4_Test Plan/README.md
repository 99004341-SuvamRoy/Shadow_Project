# TEST PLAN:

## Table no: High level Test Plan

| **Test ID** | **Description**                                              | **Exp I/P** | **Exp O/P** | **Actual O/P** | **TEST TYPE** | 
|-------------|--------------------------------------------------------------|----------------|-------------|----------------|--------|
|  H_01       |To POST request body|JSON File|200 OK|200 OK| **Requirement Based** |
|  H_02       |Check for multiple test data for api|Positive Test Data|200 OK|200 OK| **Scenario Based** |
|  H_03       |Check for multiple request for api|GET/PUT/POST |405 Method Not Found|405 Method Not Found| **Scenario Based**  |
|  H_04       |Check for multiple test data for api|Negative Test Data|500 Server Error|500 Server Error| **Boundary Based** |



## Table no: Low level test plan

| **Test ID** | **H_ID** | **Description**                                              | **Exp I/P** | **Exp O/P** | **Actual Out** |**Type Of Test** |     
|-------------|--------------------------------------------------------------|---------------|-------------|----------------|------------------|------------|
|  L_01       |Check if new books are being added to the library| Title: "Harry Potter", Author: "J K Rowlings", Genre: "Magical Realism", Language: "English", Id: 192 |Returns 1|Returns 1|Requirement based | **PASS** |
|  L_02       |Check adding a book with title of 1 letter| Title: "H", Author: "J K Rowlings", Genre: "Magical Realism", Language: "English", Id: 192 |"Invalid title"|"Invalid title"|Boundary based | **PASS** |
|  L_03       |Check adding a book with author name of 1 letter book | Title: "Harry Potter", Author: "J", Genre: "Magical Realism", Language: "English", Id: 192 |"Invalid author name"|"Invalid author name"| Boundary based | **PASS** |
|  L_04       |Check adding a book with genre containing only one letter | Title: "Harry Potter", Author: "J K Rowlings", Genre: "M", Language: "English", Id: 192 |"Invalid genre"|"Invalid genre"|Boundary based | **PASS** |
|  L_05       |Check adding a book with language containing only one letter | Title: "Harry Potter", Author: "J K Rowlings", Genre: "Magical Realism", Language: "E", Id: 192 |"Invalid language"|"Invalid language"|Boundary based | **PASS** |
|  L_06       |Check if book can be searched by Title|  Title: "Harry Potter"|Book Object| Book Object|Requirement based | **PASS** |
|  L_07       |Check adding of an existing book increase the stock| Title: "Harry Potter", Author: "J K Rowlings", Genre: "Magical Realism", Language: "English", Id: 192 |"Stock value 2"|"Stock Value"|Scenario based | **PASS** |
|  L_08       |Check if existing book is being deleted| Title: "Harry Potter", Author: "J K Rowlings", Genre: "Magical Realism", Language: "English", Id: 192 |"Deletion Successful"|"Deletion Successful"|Requirement based | **PASS** |
|  L_09       |Check editing title of book| Title: "Harry Potter", Author: "J K Rowlings", Genre: "Magical Realism", Language: "English", Id: 192 |"Title change"|"Title change"|Technical    | **PASS** |
|  L_10       |Check editing the author data of book| Title: "Harry Potter", Author: "J K Rowlings", Genre: "Magical Realism", Language: "English", Id: 192 |"Author change"|"Author change"|Technical    | **PASS** |
|  L_11       |Check editing the genre of book| Title: "Harry Potter", Author: "J K Rowlings", Genre: "Magical Realism", Language: "English", Id: 192 |"Genre change"|"Genre change"|Technical | **PASS** |
|  L_12       |Check editing the language of book and updating it.| Title: "Harry Potter", Author: "J K Rowlings", Genre: "Magical Realism", Language: "English", Id: 192 |"Language change"|"Language change"| Technical | **PASS** |
|  L_13       |Check issuing of an existing book for a user.| Title: "Harry Potter", Author: "J K Rowlings", Genre: "Magical Realism", Language: "English", Id: 192 |"Successfully issued book"|"Successfully issued book"|Technical | **PASS** |
|  L_14       |Check stock of available books after adding same 4 books.| Title: "Harry Potter", Author: "J K Rowlings", Genre: "Magical Realism", Language: "English", Id: 192 |4|4|Technical | **PASS** |
 
 
