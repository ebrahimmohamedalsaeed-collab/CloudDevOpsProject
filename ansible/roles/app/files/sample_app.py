from http.server import BaseHTTPRequestHandler, HTTPServer

class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header('Content-type','text/plain')
        self.end_headers()
        self.wfile.write(b'Hello from sample app (localhost)')

if __name__ == '__main__':
    server = HTTPServer(('0.0.0.0', 5000), Handler)
    print('Starting app on port 5000')
    server.serve_forever()
