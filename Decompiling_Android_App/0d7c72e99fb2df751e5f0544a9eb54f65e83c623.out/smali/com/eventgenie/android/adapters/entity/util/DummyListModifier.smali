.class public Lcom/eventgenie/android/adapters/entity/util/DummyListModifier;
.super Ljava/lang/Object;
.source "DummyListModifier.java"

# interfaces
.implements Lcom/genie_connect/android/db/config/features/GmListModifier;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlaceholderAssetId()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public showThumbnail()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method
