.class public final enum Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;
.super Ljava/lang/Enum;
.source "AppRefParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/db/access/queryparam/AppRefParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimePosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

.field public static final enum FUTURE:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

.field public static final enum PAST:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

.field public static final enum UNDEFINED:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

    const-string v1, "PAST"

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;->PAST:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

    .line 74
    new-instance v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

    const-string v1, "FUTURE"

    invoke-direct {v0, v1, v3}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;->FUTURE:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

    .line 75
    new-instance v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v4}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;->UNDEFINED:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

    sget-object v1, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;->PAST:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;->FUTURE:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;->UNDEFINED:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

    aput-object v1, v0, v4

    sput-object v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;->$VALUES:[Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

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
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;->$VALUES:[Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

    invoke-virtual {v0}, [Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

    return-object v0
.end method
