git clone https://github.com/ninoseki/eml_analyzer.git
cd eml_analyzer
docker build . -t eml_analyzer
docker run -i -d -p 8000:8000 eml_analyzer
