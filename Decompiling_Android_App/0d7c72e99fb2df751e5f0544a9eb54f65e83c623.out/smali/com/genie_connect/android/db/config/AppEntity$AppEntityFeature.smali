.class Lcom/genie_connect/android/db/config/AppEntity$AppEntityFeature;
.super Ljava/lang/Object;
.source "AppEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/db/config/AppEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppEntityFeature"
.end annotation


# instance fields
.field mIsEnabled:Z


# direct methods
.method public constructor <init>(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Z)V
    .locals 0
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "isEnabled"    # Z

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean p2, p0, Lcom/genie_connect/android/db/config/AppEntity$AppEntityFeature;->mIsEnabled:Z

    .line 58
    return-void
.end method
