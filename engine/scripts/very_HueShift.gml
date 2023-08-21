return shader_pixel_create_base64("
    eJxdkr1uE0EUhb+Z2SQGRawEpRFYogEKKzaicENCQkFhCjArUSBFFjEiUowtx/Rj
    iY5mH2Fp102eANLyDLQWj8GgO3diDLsa7blnzz33Zxcbwu+wx9Hrp4e3gS8ANgQL
    SIyBz8AzwMXQ0hceeCtSlXACzIHBcDw9G83I2MXEW6/hePLp45yluGzy/1/T8+Pu
    8R4vTt/NJueT9/PW/VcPWs/7g35r8GF4Mpq1jibj6enZaNbqtbu9du9xt/2o0+nw
    ErYMeQV+f1k/3F/W9RPxE96SV8KB/y7csq6/Ce+i/vIg/PrZhoNLeXdXR/LgLv7i
    vEy4pJFXh3EVuYfVBY1VZcAadr1FsY24WW2Bc6qTU2aQgfVQyCkd9UJznXf88Jpr
    vKFI2MrTv4HMRB/hV1LHq5fx2h+lgehl2Y4axY2YrzUybwjrGm7NX5NeE7beUsR6
    Oh+xlvhdB2diPek9eLuOo89C+pF8qeegchTVdvKUeUSfZl9I/uYuTPSs/b24Y+U2
    9FKj0ndZjG+tcZ16vdLVchaaeyN5NyvVS3y1N8XaZ528ldPcOwkXlc4p/jLXvzPJ
    95UdpO/lb0Jm2YkYmpL/Vf+BnY1dYmnk3rHyIcAfgyiSPw==
")

/*
    SamplerState Sampler : register(s0);

    struct PS_INPUT {
        float4 position: POSITION0;
        float2 uv: TEXCOORD0;
        float4 color: COLOR;
    };

    struct PS_OUTPUT {
        float4 color: COLOR;
    };

    float3 rgb2hsv(float3 c) {
      float4 K = float4(0.f, -1.f / 3.f, 2.f / 3.f, -1.f);
      float4 p = c.g < c.b ? float4(c.bg, K.wz) : float4(c.gb, K.xy);
      float4 q = c.r < p.x ? float4(p.xyw, c.r) : float4(c.r, p.yzx);

      float d = q.x - min(q.w, q.y);
      float e = 1e-10;
      return float3(abs(q.z + (q.w - q.y) / (6.f * d + e)), d / (q.x + e), q.x);
    }

    float3 hsv2rgb(float3 c) {
      float4 K = float4(1.f, 2.f / 3.f, 1.f / 3.f, 3.f);
      float3 p = abs(frac(c.xxx + K.xyz) * 6.f - K.www);
      return c.z * lerp(K.xxx, saturate(p - K.xxx), c.y);
    }

    uniform float amount = 0;

    PS_OUTPUT main(PS_INPUT input) {
        PS_OUTPUT output;

        float4 diffuse = tex2D(Sampler,input.uv) * input.color;

        float3 hsv = rgb2hsv(diffuse.rgb);
        hsv.x = fmod(hsv.x + amount, 1);

        output.color=float4(hsv2rgb(hsv), diffuse.a);

        return output;
    }
*/
