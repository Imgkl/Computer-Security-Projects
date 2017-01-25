.class public final enum Lcom/genie_connect/common/db/model/Speaker$SpeakerType;
.super Ljava/lang/Enum;
.source "Speaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/common/db/model/Speaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpeakerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/common/db/model/Speaker$SpeakerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

.field public static final enum CO_CHAIR:Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

.field public static final enum KEY_SPEAKER:Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

.field public static final enum LEAD_CHAIR:Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

.field public static final enum SPEAKER:Lcom/genie_connect/common/db/model/Speaker$SpeakerType;


# instance fields
.field private final stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    new-instance v0, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    const-string v1, "CO_CHAIR"

    const-string v2, "coChairs"

    invoke-direct {v0, v1, v3, v2}, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;->CO_CHAIR:Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    .line 87
    new-instance v0, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    const-string v1, "KEY_SPEAKER"

    const-string v2, "keySpeakers"

    invoke-direct {v0, v1, v4, v2}, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;->KEY_SPEAKER:Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    .line 88
    new-instance v0, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    const-string v1, "LEAD_CHAIR"

    const-string v2, "coChairs"

    invoke-direct {v0, v1, v5, v2}, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;->LEAD_CHAIR:Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    .line 89
    new-instance v0, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    const-string v1, "SPEAKER"

    const-string v2, "speakers"

    invoke-direct {v0, v1, v6, v2}, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;->SPEAKER:Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    sget-object v1, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;->CO_CHAIR:Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;->KEY_SPEAKER:Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;->LEAD_CHAIR:Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;->SPEAKER:Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;->$VALUES:[Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

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
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;->stringValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/common/db/model/Speaker$SpeakerType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    const-class v0, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/common/db/model/Speaker$SpeakerType;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;->$VALUES:[Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    invoke-virtual {v0}, [Lcom/genie_connect/common/db/model/Speaker$SpeakerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;->stringValue:Ljava/lang/String;

    return-object v0
.end method
