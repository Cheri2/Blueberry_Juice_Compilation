return shader_pixel_create_base64("
    eJyllL1rFEEYxn8zu/cRMC5E0EbwCCjaHCaicMHkziSF4lmYZOsQzB0eJF5IIopY
    rKQzTQrBwmbSXv4AKzFYGdiAhV06SSn2aVx5Z3a9Dwsx3rEw+zwz7/O8H7N4SfIz
    KTOzcGf6IrAF4CWJBuQdBS+BWUDjoxhhQXBg2WI5FOdZSbHF1lxjo73ydLPVfsLe
    3p7Cwz0Zv9BabbCHxeTvfmsbizcWr/Og9Wi9vdFubpauzl0r3a3P10vzj5eWG+ul
    mfbqWmulsV6qlMcr5crN8fKNsbExHkIOAgPRx8O4PnVrSU8CVcEVgTkKDmpHwb19
    +DwNpZrgmsC8fvdlQvbBi9kwDC3uEZitk9Eph5tae2RrQvA8gTmM49tQq8F+DWr7
    ghcIzEEcTx7G36ujo5+qz5+9tbpFu78+eRDHH8RTs9m0+BCBOX5/v/r125WK04BL
    oHMQgbejpJycjeDY+OCDinJgoBNBEp2zvIqAKONlrcAoQnMZtEJbTEuBUZEitI/j
    3P6c5YYjn5yB3I7bOyy69smD1uRFw7i1inzC1JPbp3kjsYyczTTFo+wRHWV9dcRX
    imnrQ9szoZFcMqyX781FD/AS/1/Oe328ijyrL55cDVzM0Na417dH0uM7wzDeb12H
    9ec6qNvlXT+6MbO+5d2ZPqxX52+99tO698+KrcGpY+bSmG5GhE8iRdIzj6Fgpn/G
    eEVfvknkpXXu6lhst6t9xs7RELNmiE7qzWG9fOZtMMdefekrsJ29+ymfndGEUZ7Q
    ej5tXWQWB3KWuNunjdediz/jKQp2XQBT4CSduUKk0tpk6zwdkydJ7+AFwbblTjq/
    Er9j773MY3p30p5a3cH6/XdtHO9Z70WOTZEfZgR8TSE9I98Xdu1sFQWT+2h7rCkW
    LZck8AsGyhU0
")

/*
    vec3 hsv2rgb(vec3 c)
    {
        vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
        vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
        return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
    }
    float range(float val, float mi, float ma) {
        return val * (ma - mi) + mi;
    }
    void mainImage( out vec4 fragColor, in vec2 fragCoord )
    {
        vec2 p = -1.0 + 2.0 * fragCoord.xy / iResolution.xy;
        float t = iTime / 5.;

        // main code, *original shader by: 'Plasma' by Viktor Korsun (2011)
        float x = p.x;
        float y = p.y;

        float mov0 = x+y+cos(sin(t)*2.0)*100.+sin(x/100.)*1000.;
        float mov1 = y / 0.3 +  t;
        float mov2 = x / 0.2;

        float c1 = abs(sin(mov1+t)/2.+mov2/2.-mov1-mov2+t);
        float c2 = abs(sin(c1+sin(mov0/1000.+t)+sin(y/40.+t)+sin((x+y)/100.)*3.));
        float c3 = abs(sin(c2+cos(mov1+mov2+c2)+cos(mov2)+sin(x/1000.)));

        vec3 col = hsv2rgb(vec3(range(c2, 0.85, 0.95), range(c3, 0.2, 0.25), range(c3, 0.9, 0.8)));


        fragColor = vec4(col, 1.);

    }
*/
