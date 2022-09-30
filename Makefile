PROGRAM_NAME := myprogram.exe

OUTPUTDIR :=./bin
SOURCEDIR :=./src
HEADERDIR :=./include

CXXFLAGS  +=-Iinclude 

#link with other libraries
LD_FLAGS :=-lmath

#source files for the platform
SOURCE_FILES := $(wildcard $(SOURCEDIR)/*.cpp)

# include headers in the dependecy check
HEADER_FILES := $(wildcard $(HEADERDIR)/*.h)

#compiler an instance of the simulator 
$(OUTPUTDIR)/$(PROGRAM_NAME).exe: $(TARGET_DEPS) $(HEADER_FILES) $(DEP_LIBS)
	$(Q)g++ $(TARGET_DEPS) -o $(OUTPUTDIR)/$(PROGRAM_NAME).exe $(LD_FLAGS) $(CXXFLAGS)

#remove previously generated files
clean:
	$(Q)rm -rf $(OUTPUTDIR)/$(PROGRAM_NAME).exe