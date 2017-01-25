.class public Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDimensions;
.super Ljava/lang/Object;
.source "EmspDimensions.java"


# instance fields
.field private length:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "length"
    .end annotation
.end field

.field private width:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "width"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLength()D
    .locals 2

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDimensions;->length:D

    return-wide v0
.end method

.method public getWidth()D
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDimensions;->width:D

    return-wide v0
.end method
