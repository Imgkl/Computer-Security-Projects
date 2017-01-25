.class public final enum Lcom/genie_connect/android/db/config/misc/Noun$NounType;
.super Ljava/lang/Enum;
.source "Noun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/db/config/misc/Noun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NounType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/android/db/config/misc/Noun$NounType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/android/db/config/misc/Noun$NounType;

.field public static final enum ARTICLED:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

.field public static final enum PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

.field public static final enum SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    const-string v1, "SINGULAR"

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/android/db/config/misc/Noun$NounType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    .line 104
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    const-string v1, "PLURAL"

    invoke-direct {v0, v1, v3}, Lcom/genie_connect/android/db/config/misc/Noun$NounType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    .line 105
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    const-string v1, "ARTICLED"

    invoke-direct {v0, v1, v4}, Lcom/genie_connect/android/db/config/misc/Noun$NounType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->ARTICLED:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    .line 102
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    sget-object v1, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->ARTICLED:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->$VALUES:[Lcom/genie_connect/android/db/config/misc/Noun$NounType;

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
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/android/db/config/misc/Noun$NounType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 102
    const-class v0, Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/android/db/config/misc/Noun$NounType;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->$VALUES:[Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v0}, [Lcom/genie_connect/android/db/config/misc/Noun$NounType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    return-object v0
.end method
