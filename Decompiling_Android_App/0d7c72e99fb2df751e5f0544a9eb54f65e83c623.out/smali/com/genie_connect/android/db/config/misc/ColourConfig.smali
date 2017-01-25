.class public final Lcom/genie_connect/android/db/config/misc/ColourConfig;
.super Ljava/lang/Object;
.source "ColourConfig.java"


# static fields
.field private static final COLOUR:Ljava/lang/String; = "colour"

.field private static final WHITE_TEXT:Ljava/lang/String; = "whiteText"


# instance fields
.field private final mAltColour:I

.field private final mColour:I

.field private final mColourHEX:Ljava/lang/String;

.field private final mWhiteText:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "colour"

    invoke-static {p1, v0}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/misc/ColourConfig;->mColourHEX:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/genie_connect/android/db/config/misc/ColourConfig;->mColourHEX:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/genie_connect/android/db/config/misc/ColourConfig;->mColour:I

    .line 53
    iget v0, p0, Lcom/genie_connect/android/db/config/misc/ColourConfig;->mColour:I

    invoke-static {v0}, Lcom/genie_connect/android/db/config/misc/ColourConfig;->lighten(I)I

    move-result v0

    iput v0, p0, Lcom/genie_connect/android/db/config/misc/ColourConfig;->mAltColour:I

    .line 54
    const-string/jumbo v0, "whiteText"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/misc/ColourConfig;->mWhiteText:Z

    .line 55
    return-void
.end method

.method private static lighten(I)I
    .locals 6
    .param p0, "col"    # I

    .prologue
    .line 83
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 84
    .local v0, "hsv":[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 85
    const/4 v1, 0x2

    aget v2, v0, v1

    float-to-double v2, v2

    const-wide v4, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v0, v1

    .line 86
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1
.end method


# virtual methods
.method public getAdBarColour()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lcom/genie_connect/android/db/config/misc/ColourConfig;->mColour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getAltColour()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/genie_connect/android/db/config/misc/ColourConfig;->mAltColour:I

    return v0
.end method

.method public getColour()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/genie_connect/android/db/config/misc/ColourConfig;->mColour:I

    return v0
.end method

.method public getColourHEX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/genie_connect/android/db/config/misc/ColourConfig;->mColourHEX:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleBarColour()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/genie_connect/android/db/config/misc/ColourConfig;->mColour:I

    return v0
.end method

.method public isWhiteText()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/misc/ColourConfig;->mWhiteText:Z

    return v0
.end method
