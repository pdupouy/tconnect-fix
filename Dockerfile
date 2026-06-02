FROM jwoglom/tconnectsync:latest
USER root
RUN pip install python-dotenv
CMD ["sh", "-c", "while true; do python -m tconnectsync; echo 'Reiniciando en 5 min...'; sleep 300; done"]
