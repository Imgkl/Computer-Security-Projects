.class final enum Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;
.super Ljava/lang/Enum;
.source "DbSpeakers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/db/access/DbSpeakers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SessionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;

.field public static final enum SESSION:Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;

.field public static final enum SUBSESSION:Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;


# instance fields
.field private final stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 428
    new-instance v0, Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;

    const-string v1, "SESSION"

    const-string v2, "sessions"

    invoke-direct {v0, v1, v3, v2}, Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;->SESSION:Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;

    .line 429
    new-instance v0, Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;

    const-string v1, "SUBSESSION"

    const-string v2, "subsessions"

    invoke-direct {v0, v1, v4, v2}, Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;->SUBSESSION:Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;

    .line 427
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;

    sget-object v1, Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;->SESSION:Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;->SUBSESSION:Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;->$VALUES:[Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 432
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;->stringValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 427
    const-class v0, Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;
    .locals 1

    .prologue
    .line 427
    sget-object v0, Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;->$VALUES:[Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;

    invoke-virtual {v0}, [Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;->stringValue:Ljava/lang/String;

    return-object v0
.end method
