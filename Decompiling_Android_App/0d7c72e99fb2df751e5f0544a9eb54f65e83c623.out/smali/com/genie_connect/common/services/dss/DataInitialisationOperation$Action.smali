.class public final enum Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;
.super Ljava/lang/Enum;
.source "DataInitialisationOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/common/services/dss/DataInitialisationOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;

.field public static final enum COMMIT:Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;

.field public static final enum DOWNLOAD:Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 363
    new-instance v0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;

    const-string v1, "DOWNLOAD"

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;->DOWNLOAD:Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;

    new-instance v0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;

    const-string v1, "COMMIT"

    invoke-direct {v0, v1, v3}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;->COMMIT:Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;

    .line 362
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;

    sget-object v1, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;->DOWNLOAD:Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;->COMMIT:Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;

    aput-object v1, v0, v3

    sput-object v0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;->$VALUES:[Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 362
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 362
    const-class v0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;
    .locals 1

    .prologue
    .line 362
    sget-object v0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;->$VALUES:[Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;

    invoke-virtual {v0}, [Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;

    return-object v0
.end method
