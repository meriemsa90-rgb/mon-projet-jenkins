# Utilise une image Python officielle 
FROM python:3.12-slim 
# Dossier de travail 
WORKDIR /app 
# Copier le script 
COPY App.py . 
# Commande par défaut 
CMD ["python", "App.py"]
