.class Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;
.super Ljava/lang/Object;
.source "Flickr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/social/flickr/Flickr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Location"
.end annotation


# instance fields
.field private mLatitude:F

.field private mLongitude:F


# direct methods
.method private constructor <init>(FF)V
    .locals 0
    .param p1, "latitude"    # F
    .param p2, "longitude"    # F

    .prologue
    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    iput p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;->mLatitude:F

    .line 895
    iput p2, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;->mLongitude:F

    .line 896
    return-void
.end method

.method synthetic constructor <init>(FFLcom/eventgenie/android/utils/social/flickr/Flickr$1;)V
    .locals 0
    .param p1, "x0"    # F
    .param p2, "x1"    # F
    .param p3, "x2"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$1;

    .prologue
    .line 889
    invoke-direct {p0, p1, p2}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;-><init>(FF)V

    return-void
.end method

.method static synthetic access$2902(Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;F)F
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;
    .param p1, "x1"    # F

    .prologue
    .line 889
    iput p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;->mLatitude:F

    return p1
.end method

.method static synthetic access$3002(Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;F)F
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;
    .param p1, "x1"    # F

    .prologue
    .line 889
    iput p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;->mLongitude:F

    return p1
.end method


# virtual methods
.method getLatitude()F
    .locals 1

    .prologue
    .line 899
    iget v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;->mLatitude:F

    return v0
.end method

.method getLongitude()F
    .locals 1

    .prologue
    .line 903
    iget v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;->mLongitude:F

    return v0
.end method
