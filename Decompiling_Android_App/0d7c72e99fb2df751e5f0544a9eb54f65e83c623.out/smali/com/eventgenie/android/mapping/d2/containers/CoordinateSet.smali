.class public Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
.super Ljava/lang/Object;
.source "CoordinateSet.java"


# instance fields
.field private x:D

.field private y:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->x:D

    .line 43
    iput-wide p3, p0, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->y:D

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)Z
    .locals 4
    .param p1, "otherCoordinateSet"    # Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->x:D

    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getX()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->y:D

    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getY()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->y:D

    return-wide v0
.end method

.method public setX(D)V
    .locals 1
    .param p1, "x"    # D

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->x:D

    .line 50
    return-void
.end method

.method public setY(D)V
    .locals 1
    .param p1, "y"    # D

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->y:D

    .line 56
    return-void
.end method
