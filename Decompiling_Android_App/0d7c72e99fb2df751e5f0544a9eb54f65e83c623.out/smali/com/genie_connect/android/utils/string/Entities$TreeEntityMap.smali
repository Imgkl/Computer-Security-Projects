.class Lcom/genie_connect/android/utils/string/Entities$TreeEntityMap;
.super Lcom/genie_connect/android/utils/string/Entities$MapIntMap;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/utils/string/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TreeEntityMap"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/genie_connect/android/utils/string/Entities$MapIntMap;-><init>()V

    .line 528
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/utils/string/Entities$TreeEntityMap;->mapNameToValue:Ljava/util/Map;

    .line 529
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/utils/string/Entities$TreeEntityMap;->mapValueToName:Ljava/util/Map;

    .line 530
    return-void
.end method
