inline void PixelizeUV_float(float2 UV, float screenWidth, float screenHeight, float size, out float2 pixelatedUV)
{ 
	float heightToWidth = screenHeight / screenWidth;
	float widthToHeight = screenWidth / screenHeight;

	UV.x *= (size * widthToHeight);
	UV.y *= size;

	UV.x = round(UV.x);
	UV.y = round(UV.y);

	UV.x *= heightToWidth;

	UV.x /= size;
	UV.y /= size;

	pixelatedUV = UV;
}