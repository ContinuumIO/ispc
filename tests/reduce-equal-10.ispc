
export uniform int width() { return programCount; }

export void f_fu(uniform float RET[], uniform float aFOO[], uniform float b) {
    unsigned int64 a = aFOO[programIndex&1];
    RET[programIndex] = 1;
    if (programIndex & 1)
        RET[programIndex] = reduce_equal(a) ? 1 : 0; 
}

export void result(uniform float RET[]) {
    RET[programIndex] = 1;
}
