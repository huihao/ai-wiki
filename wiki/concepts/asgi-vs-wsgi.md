---
name: "ASGI vs WSGI"
type: "concept"
category: "web-frameworks"
description: "Comparison of Python web server gateway interface standards - WSGI (synchronous) and ASGI (asynchronous)."
---

# ASGI vs WSGI

ASGI and WSGI are Python web server gateway interface standards that define how web applications communicate with web servers. WSGI is synchronous while ASGI is asynchronous.

## WSGI (Web Server Gateway Interface)

### Definition

WSGI stands for "Python Web Server Gateway Interface", defined in PEP 3333.

### Characteristics

**Synchronous Design**:
- Single-threaded execution
- Request-by-request processing
- Blocking I/O operations
- No async support

**Protocol Support**:
- HTTP only
- No HTTP/2
- No WebSocket

**Application Model**:
- One request at a time
- Synchronous function calls
- Blocking database queries
- Sequential execution

### Limitations

- Cannot leverage asynchrony
- Limited performance potential
- Waiting for I/O wastes time
- Not suitable for high concurrency

### WSGI Frameworks

- **Flask**: Uses Werkzeug (WSGI toolkit)
- **Django**: Traditional WSGI support
- Other synchronous Python frameworks

### WSGI Servers

- **Gunicorn**: WSGI server
- **uWSGI**: Application server
- **mod_wsgi**: Apache module

### Production Stack

**WSGI**: Nginx + Gunicorn + Flask/Django
- Nginx: Reverse proxy, static files
- Gunicorn: WSGI server, worker processes
- Flask/Django: WSGI application

## ASGI (Asynchronous Server Gateway Interface)

### Definition

ASGI stands for "Asynchronous Server Gateway Interface".

### Characteristics

**Asynchronous Design**:
- Async I/O operations
- Concurrent request handling
- Non-blocking execution
- Event-based processing

**Protocol Support**:
- HTTP
- HTTP/2
- WebSocket
- Multiple protocols in one app

**Application Model**:
- Multiple async events per application
- Concurrent request handling
- Non-blocking database queries
- Parallel execution

### Advantages

- Leverages asynchrony for performance
- Handles high concurrency
- Efficient I/O utilization
- Peak performance potential

### ASGI Frameworks

- **FastAPI**: Native ASGI support
- **Starlette**: ASGI toolkit
- **Django**: ASGI support via channels
- Other async Python frameworks

### ASGI Servers

- **Uvicorn**: ASGI server
- **Daphne**: Django channels server
- **Hypercorn**: ASGI server

### Production Stack

**ASGI**: Nginx + Uvicorn + FastAPI
- Nginx: Reverse proxy, static files
- Uvicorn: ASGI server, async workers
- FastAPI: ASGI application

## Architectural Comparison

### Components

**ASGI Toolkit**: Libraries implementing ASGI functions
- URL routing
- Request/Response objects
- Template engines
- Example: Starlette (FastAPI) vs Werkzeug (Flask)

**ASGI Web Framework**: Frameworks implementing ASGI spec
- Developer-friendly interfaces
- Business logic abstractions
- Example: FastAPI

**Web Application**: Application created using framework
- Built-in dev servers available
- Production deployment required

**Web Server**: Production requirements
- Nginx for reverse proxy
- Load balancing
- Static file serving
- Access control

**ASGI Server**: Bridge between web server and application
- Handles the "G" (gateway) part
- Forward requests to application
- Example: Uvicorn

### Evolution

WSGI → ASGI represents:
- Iterative redesign
- Async capability addition
- Protocol expansion
- Performance improvement

## Performance Comparison

### WSGI Performance

- Single-threaded
- Sequential processing
- I/O blocking
- Limited scalability

### ASGI Performance

- Concurrent execution
- Parallel processing
- Non-blocking I/O
- High scalability
- Comparable to NodeJS/Go

## Protocol Capabilities

### WSGI

- HTTP only
- No WebSocket
- No HTTP/2
- Single protocol

### ASGI

- HTTP
- HTTP/2
- WebSocket
- Multiple protocols
- Real-time communication

## Migration Considerations

### WSGI to ASGI

ASGI supports both:
- Synchronous WSGI applications (migration path)
- New asynchronous ASGI applications

### Framework Migration

- Flask (WSGI) → FastAPI (ASGI)
- Django (WSGI) → Django Channels (ASGI)
- Rewriting for async patterns

## Use Case Fit

### WSGI Best For

- Simple applications
- Low concurrency needs
- Legacy systems
- Synchronous dependencies

### ASGI Best For

- High-performance applications
- High concurrency requirements
- Real-time applications (WebSocket)
- Async-friendly codebases
- API services

## Framework Examples

### Flask (WSGI)

```python
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello World'  # Synchronous
```

### FastAPI (ASGI)

```python
from fastapi import FastAPI

app = FastAPI()

@app.get('/')
async def hello():
    return {'message': 'Hello World'}  # Async
```

## Related Concepts

- [[web-frameworks]] - Python web development
- [[async-python]] - Asynchronous programming
- [[python-protocols]] - Python interface standards
- [[server-architecture]] - Web server design
- [[api-development]] - API construction

## Related Entities

- [[flask]] - WSGI framework
- [[fastapi]] - ASGI framework
- [[werkzeug]] - WSGI toolkit
- [[starlette]] - ASGI toolkit
- [[gunicorn]] - WSGI server
- [[uvicorn]] - ASGI server
- [[nginx]] - Web server