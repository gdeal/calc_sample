
#If you need to clean a specific target/configuration: $(COMMAND) -target $(TARGET) -configuration DebugOrRelease -sdk $(SDK) clean

clean:
	-rm -rf build/*

test:
	GHUNIT_CLI=1 xcodebuild -target CalculatorTests -configuration Debug -sdk iphonesimulator5.1 build
