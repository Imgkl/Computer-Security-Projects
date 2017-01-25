.class final Lcom/eventgenie/android/utils/help/emsp/EmspUtil$1;
.super Ljava/lang/Object;
.source "EmspUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/utils/help/emsp/EmspUtil;->getCurrentLocation(Landroid/content/Context;)Landroid/location/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/location/Location;Landroid/location/Location;)I
    .locals 2
    .param p1, "lhs"    # Landroid/location/Location;
    .param p2, "rhs"    # Landroid/location/Location;

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 194
    const/4 v0, -0x1

    .line 198
    :goto_0
    return v0

    .line 195
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 196
    const/4 v0, 0x0

    goto :goto_0

    .line 198
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 189
    check-cast p1, Landroid/location/Location;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/location/Location;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/utils/help/emsp/EmspUtil$1;->compare(Landroid/location/Location;Landroid/location/Location;)I

    move-result v0

    return v0
.end method
