> This API is for the backend of *Notbu's Online Shop*, a mock e-commerce project.  
> It allows developers to interact with product listings and users via RESTful endpoints.  
> Tested using Postman and currently runs on Node.js with Express.

## `GET` /products
Returns a list of available products.

### Request
* Method: `GET`
* Endpoint: /products
* Base URL: http://localhost:4000

**Request Example:**
```
GET /products HTTP/1.1
Host: localhost:4000
```
### Response
**Success (200 OK)**

Returns a JSON array of product objects.

**Response Example:**
```
[
  {
    "id": 1,
    "product_name": "Hampas Chair",
    "category": "chairs",
    "status": "NORMAL",
    "brand": "no brand",
    "body": "Matibay, pwede ipang-hampas sa kaaway",
    "img_filename": "hampas_chair.png"
  },
  {
    "id": 2,
    "product_name": "Ice Box",
    "category": "others",
    "status": "NORMAL",
    "brand": "Orocan",
    "body": "Insulated; Free ice scoop",
    "img_filename": "ice_box_orocan.png"
  }
]
```
### Error
| Status Code | Meaning               | Description                                    |
| ----------- | --------------------- | ---------------------------------------------- |
| 500         | Internal Server Error | Server-side error occurred while fetching data |

## `GET` /products/:id
Retrieve a specific product by its ID.

### Request
* Method: `GET`
* Endpoint: /products/:id
* Example: /products/1

**Request Parameters:**
| Parameter | Type   | Required | Description       |
| --------- | ------ | -------- | ----------------- |
| id        | int    | Yes      | ID of the product |

**Request Example:**
```
GET /products/1 HTTP/1.1
Host: localhost:3000
```
### Response
**Success (200 OK)** 

Returns a JSON of the product object.

**Response Example:**
```
{
    "id": 1,
    "product_name": "Hampas Chair",
    "category": "chairs",
    "status": "NORMAL",
    "brand": "no brand",
    "body": "Matibay, pwede ipang-hampas sa kaaway",
    "img_filename": "hampas_chair.png"
  }
```
## `GET` /products/filter/:category
Retrieve all products that belong to a specific category.

### Request
* Method: `GET`
* Endpoint: /products/filter/:category
* Example: /products/filter/chairs

**Request Parameters:**
| Parameter  | Type   | Required | Description                 |
| ---------- | ------ | -------- | --------------------------- |
| category   | string | Yes      | Category to filter products |

**Request Example:**
```
GET /products/filter/stationery HTTP/1.1
Host: localhost:4000
```
### Response
**Success (200 OK)**

Returns a JSON array of product objects in the given category.

**Response Example:**
```
[
  {
    "id": 1,
    "product_name": "Hampas Chair",
    "category": "chairs",
    "status": "NORMAL",
    "brand": "no brand",
    "body": "Matibay, pwede ipang-hampas sa kaaway",
    "img_filename": "hampas_chair.png"
  },
  {
    "id": 5,
    "product_name": "Arm Chair",
    "category": "chairs",
    "status": "NORMAL",
    "brand": "Jolly",
    "body": "Rattan chairs",
    "img_filename": "arm_chair_jolly.png"
  }
]
```

## `PUT` /products/:id
Update the information of a product.

### Request
* Method: `PUT`
* Endpoint: /products/:id
* Example: /products/1

**Request Parameters:**
| Parameter  | Type   | Required | Description                 |
| ---------- | ------ | -------- | --------------------------- |
| id         | int    | Yes      | ID of the product           |


**Request Example:**
```
PUT /products/1 HTTP/1.1
Host: localhost:4000
Request Body:
{
    "id": 1,
    "product_name": "Hampas Chair",
    "category": "chairs",
    "status": "NORMAL",
    "brand": "no brand",
    "body": "Heavy Duty. Built to last, this chair can withstand weight and pressure with ease.",
    "img_filename": "hampas_chair.png"
}
```
### Response
**Success (200 OK)**

Returns a JSON of the updated product object.

**Response Example:**
```
{
    "id": 1,
    "product_name": "Hampas Chair",
    "category": "chairs",
    "status": "NORMAL",
    "brand": "no brand",
    "body": "Heavy Duty. Built to last, this chair can withstand weight and pressure with ease.",
    "img_filename": "hampas_chair.png"
}
```

## `DELETE` /products/:id
Retrieve all products that belong to a specific category.

### Request
* Method: `DELETE`
* Endpoint: /products/:id
* Example: /products/1

**Request Parameters:**
| Parameter  | Type   | Required | Description                 |
| ---------- | ------ | -------- | --------------------------- |
| id         | int    | Yes      | ID of the product           |

**Request Example:**
```
DELETE /products/1 HTTP/1.1
Host: localhost:4000
```
### Response
**Success (200 OK)**

Returns a JSON array of a message and productId that was deleted.

**Response Example:**
```
{
  "message": "Product deleted successfully",
  "productId": "1"
}
```
