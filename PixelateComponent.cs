using UnityEngine.Rendering;
using UnityEngine.Rendering.Universal;
using UnityEngine;
using System;

[Serializable, VolumeComponentMenuForRenderPipeline("Custom/Pixelate", typeof(UniversalRenderPipeline))]
public class PixelateComponent : VolumeComponent , IPostProcessComponent
{
    public FloatParameter size = new FloatParameter(2, true);

    public bool IsActive() => !Mathf.Approximately(size.value, 0);

    public bool IsTileCompatible() => true;
}
