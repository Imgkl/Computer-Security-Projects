.class public final enum Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;
.super Ljava/lang/Enum;
.source "TimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/common/utils/date/TimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "INPUT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;

.field public static final enum JSON:Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;

.field public static final enum SQLITE:Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 530
    new-instance v0, Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;

    const-string v1, "JSON"

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;->JSON:Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;

    .line 531
    new-instance v0, Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;

    const-string v1, "SQLITE"

    invoke-direct {v0, v1, v3}, Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;->SQLITE:Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;

    .line 529
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;

    sget-object v1, Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;->JSON:Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;

    aput-object v1, v0, v2

    sget-object v1, Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;->SQLITE:Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;

    aput-object v1, v0, v3

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;->$VALUES:[Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;

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
    .line 529
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 529
    const-class v0, Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;
    .locals 1

    .prologue
    .line 529
    sget-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;->$VALUES:[Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;

    invoke-virtual {v0}, [Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;

    return-object v0
.end method
