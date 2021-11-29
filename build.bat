odin build src -out:app.wasm -target:freestanding_wasm32 -o:size -no-entry-point -extra-linker-flags:"-zstack-size=2048 --max-memory=65536 --strip-all"

xxd -i app.wasm > Wasm_Blink\app.wasm.h