About
=====

Collections of Python Scripts to Run SeaHorn (https://github.com/seahorn/seahorn) with the whole C/C++ repository.
IncludeAdder.py instruments the code (edit IncludeAdder.py before run and modify SOURSE_PATH)
SeaHornLaucher.py runs SeaHorn commands against instrumented (by IncludeAdder.py) .c code. and generates a report.
ReportBuilder generate report based on the previous result or provided a file with raw results.

Requirement 
============

* `Pyhton 3.7 or later`
* `Z3`
* `lcov ?? check version`
* `gcc with coverage`
* `seahorn https://github.com/seahorn/seahorn`
* `genhtml`
* `find out the list of dependancies`

Run
===
* Download Docker Image `docker pull seahorn/seahorn-llvm10:nightly`
* Creatre work directory `mkdir sandbox` 
* Run docker with mount option `docker run --rm -it --mount type=bind,source=${PATH_TO_REPO}/sandbox,target=/app 
seahorn/seahorn-llvm10:nightly` 
* Upload dependencies `pip install -r requirements.txt` (TBD)
* `cd launcher`   
* Edit `TestGen.py` and modify `SOURCE_PATH, SEA_PATH, Z3_PATH, OUTPUT_DIR` and other options if needed
* Run `python3 TestGen.py` => report should be created in `OUTPUT_DIR/1/summary`
