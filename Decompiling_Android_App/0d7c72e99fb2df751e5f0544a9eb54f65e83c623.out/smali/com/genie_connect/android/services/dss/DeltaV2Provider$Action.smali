.class final enum Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;
.super Ljava/lang/Enum;
.source "DeltaV2Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/services/dss/DeltaV2Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;

.field public static final enum COUNT:Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;

.field public static final enum DELETE:Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;

.field public static final enum UPDATE:Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;->DELETE:Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;

    .line 80
    new-instance v0, Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v3}, Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;->UPDATE:Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;

    .line 81
    new-instance v0, Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;

    const-string v1, "COUNT"

    invoke-direct {v0, v1, v4}, Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;->COUNT:Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;

    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;

    sget-object v1, Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;->DELETE:Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;->UPDATE:Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;->COUNT:Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;

    aput-object v1, v0, v4

    sput-object v0, Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;->$VALUES:[Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;

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
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    const-class v0, Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;->$VALUES:[Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;

    invoke-virtual {v0}, [Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;

    return-object v0
.end method
