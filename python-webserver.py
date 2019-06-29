import http.server
import socketserver
from prometheus_client import start_http_server  # To enable Prometheus metrics

PORT = 8080
PROMETHEUS_PORT = 8000
Handler = http.server.SimpleHTTPRequestHandler

with socketserver.TCPServer(("", PORT), Handler) as httpd:
    print("Server launched at", PORT)
    start_http_server(PROMETHEUS_PORT)  # Prometheus Metrics server starts here
    httpd.serve_forever()

