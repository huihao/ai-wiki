---
name: "FastAPI"
type: "technology"
description: "Modern, fast Python web framework for building APIs with automatic validation, async support, and based on standard Python type hints."
website: "https://fastapi.tiangolo.com"
created: "2018"
language: "Python"
license: "MIT"
author: "Sebastián Ramírez (tiangolo)"
---

# FastAPI

FastAPI is a modern, high-performance Python web framework for building APIs. It was created in 2018 by Sebastián Ramírez and has rapidly become one of the most popular Python web frameworks.

## Characteristics

### Modern Design

FastAPI is built on:
- **Starlette**: ASGI toolkit (web routing, requests/responses)
- **Pydantic**: Data validation using Python type hints
- **ASGI**: Asynchronous Server Gateway Interface

### Key Features

1. **Automatic Data Validation**
   - Built-in Pydantic integration
   - Uses Python's native Type Hints
   - Reduces developer errors by ~40%

2. **Native Async Support**
   - Asynchronous I/O operations
   - Peak efficiency when written correctly
   - Performance comparable to NodeJS or Go

3. **ASGI Protocol**
   - Asynchronous Server Gateway Interface
   - Supports HTTP, HTTP/2, WebSocket
   - Multiple async events per application
   - Supports both sync and async code

4. **API-First Design**
   - Designed specifically for API services
   - Automatic OpenAPI documentation
   - Interactive API documentation (Swagger UI)
   - JSON Schema validation

## History

- **Created**: End of 2018 by Sebastián Ramírez
- **Philosophy**: Combine strengths of existing frameworks
- **Started gaining traction**: End of 2019
- **Popularity**: Surpassed Flask GitHub stars by 2024

### Design Inspiration

FastAPI drew inspiration from:
- Flask: Simplicity and microframework approach
- Django REST Framework: Automatic API documentation
- Starlette: ASGI toolkit patterns
- apistar and molten: API design patterns
- Marshmallow, Webargs: Data validation approaches

## Growth Statistics

### GitHub Stars
- **December 2024**: 78.9k stars
- **Flask (comparison)**: 68.4k stars
- **Growth**: Surpassed Flask in ~5 years vs Flask's 14 years

### Developer Survey
- **2019**: Not listed as option
- **2022**: 25% share in Python developer survey
- **Trend**: Rapid adoption in new projects

### New Projects
- Nearly all new Python web projects (past 1-2 years) use FastAPI
- Very few new projects choose Flask

## Technical Advantages

### Pydantic Integration

```python
from fastapi import FastAPI
from pydantic import BaseModel

class Item(BaseModel):
    name: str
    description: str | None = None
    price: float
    tax: float | None = None

app = FastAPI()

@app.post("/items/")
async def create_item(item: Item):
    return item
```

Benefits:
- Clear schema definitions
- Automatic validation
- IDE support
- Easy ORM integration
- Request→Database direct passing
- Database→Response direct passing

### Asynchronous Performance

- I/O operations are asynchronous
- No waiting for tasks to complete
- Handle multiple requests concurrently
- Best Python framework for speed
- Comparable to NodeJS/Go performance

### ASGI Architecture

**Production Stack**: Nginx + Uvicorn + FastAPI
- Modern async deployment
- High throughput
- Low latency

**vs Flask's WSGI**: Nginx + Gunicorn + Flask
- Synchronous execution
- Request-by-request processing

### Component Assembly

FastAPI doesn't implement everything itself:
- Uses Starlette for routing and ASGI
- Uses Pydantic for validation
- Template engines optional (choose your own)
- Combines best-of-breed components

## Use Cases

FastAPI excels at:
- REST API development
- Microservices
- High-performance web applications
- Async applications
- API-first projects
- Projects requiring data validation
- Real-time applications (WebSocket)
- Machine learning model serving

## Framework Integration

FastAPI works well with:
- SQLAlchemy (ORM)
- Databases (PostgreSQL, MySQL, MongoDB)
- Authentication systems
- Testing frameworks
- Deployment platforms

## Comparison with Flask

| Aspect | FastAPI | Flask |
|--------|---------|-------|
| Created | 2018 | 2010 |
| Stars (Dec 2024) | 78.9k | 68.4k |
| Protocol | ASGI | WSGI |
| Async Support | Native | Limited |
| Data Validation | Pydantic built-in | Manual |
| Performance | High | Moderate |
| API Docs | Auto-generated | Manual |
| Development Activity | High | Low |
| Community Size | Growing rapidly | Declining |

## Future Outlook

Evidence suggests FastAPI is the future of Python web frameworks:
- GitHub star lead over Flask
- Developer survey growth
- New project adoption
- Async performance advantages
- Active development community
- Modern architecture

## Related Sources

- [[is-flask-dead-is-fastapi-the-future]] - Detailed comparison
- FastAPI documentation and tutorials

## Related Concepts

- [[web-frameworks]] - Python web development
- [[asgi]] - Asynchronous Server Gateway Interface
- [[async-python]] - Asynchronous programming
- [[pydantic]] - Data validation with type hints
- [[api-development]] - Building REST APIs
- [[type-hints]] - Python typing system

## Related Entities

- [[starlette]] - ASGI toolkit used by FastAPI
- [[pydantic]] - Data validation library
- [[uvicorn]] - ASGI server for FastAPI
- [[sebastian-ramirez]] - FastAPI creator (tiangolo)
- [[flask]] - Comparison framework