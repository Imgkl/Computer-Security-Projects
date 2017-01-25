.class Lcom/genie_connect/android/utils/string/Entities$HashEntityMap;
.super Lcom/genie_connect/android/utils/string/Entities$MapIntMap;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/utils/string/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HashEntityMap"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/genie_connect/android/utils/string/Entities$MapIntMap;-><init>()V

    .line 518
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/utils/string/Entities$HashEntityMap;->mapNameToValue:Ljava/util/Map;

    .line 519
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/utils/string/Entities$HashEntityMap;->mapValueToName:Ljava/util/Map;

    .line 520
    return-void
.end method
