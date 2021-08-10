# TEST PLAN:

## Table no 1: High level Test Plan

| **Test ID** | **Description**                                              | **Exp I/P** | **Exp O/P** | **Actual O/P** | **TEST TYPE** | 
|-------------|--------------------------------------------------------------|----------------|-------------|----------------|--------|
|  H_01       |To POST request body|JSON File|200 OK|200 OK| **Requirement Based** |
|  H_02       |Check for multiple test data for api|Positive Test Data|200 OK|200 OK| **Scenario Based** |
|  H_03       |Check for multiple request for api|GET/PUT/POST |405 Method Not Found|405 Method Not Found| **Scenario Based**  |
|  H_04       |Check for multiple test data for api|Negative Test Data|500 Server Error|500 Server Error| **Boundary Based** |



## Table no 2: Low level test plan

| **Test ID** | **H_ID** | **Description**                                              | **Exp I/P** | **Exp O/P** | **Actual Out** |**Type Of Test** |     
|-------------|--------------------------------------------------------------|---------------|-------------|----------------|------------------|------------|
|  L_01       |H_01| Object as a Request body |JSON File|200 OK|200 OK| **Requirement Based** |
|  L_02       |H_01| JSON Object as a Request Body |JSON File|415 Unsopported Media Type|415 Unsupported Media Type| **Requirement Based** |
|  L_03       |H_01| JSON and Object as a Request Body |JSON File|200 OK|200 OK| **Requirement Based** |
|  L_04       |H_01| Empty Request Body |"Invalid genre"|JSON File|415 Unsupported Media Type|415 Unsupported Media Type| **Requirement Based** |
|  L_05       |H_02| Giving string instead of integer for integer type key-value pair as a request body |JSON File|500 Server Not Found|500 Server Not Found| **Scenario Based** 
|  L_06       |H_03| Check for multiple Request for API PUT |JSON File|405 Method Not Found|405 Method Not Found| **Scenario Based** |
|  L_07       |H_03| Check for multiple Request for API GET |JSON File|405 Method Not Found|405 Method Not Found| **Scenario Based** |
