.class public Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspMapInfo;
.super Ljava/lang/Object;
.source "EmspMapInfo.java"


# instance fields
.field private dimensions:Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDimensions;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dimensions"
    .end annotation
.end field

.field private image:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image"
    .end annotation
.end field

.field private path:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "path"
    .end annotation
.end field

.field private uid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uid"
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
.method public getDimensions()Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDimensions;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspMapInfo;->dimensions:Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDimensions;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDimensions;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDimensions;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspMapInfo;->dimensions:Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDimensions;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspMapInfo;->dimensions:Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDimensions;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspMapInfo;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspMapInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspMapInfo;->uid:Ljava/lang/String;

    return-object v0
.end method
