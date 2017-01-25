.class public final enum Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;
.super Ljava/lang/Enum;
.source "AppRefParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/db/access/queryparam/AppRefParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TriState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

.field public static final enum NO:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

.field public static final enum UNDEFINED:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

.field public static final enum YES:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

    const-string v1, "YES"

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;->YES:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

    .line 80
    new-instance v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

    const-string v1, "NO"

    invoke-direct {v0, v1, v3}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;->NO:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

    .line 81
    new-instance v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v4}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;->UNDEFINED:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

    sget-object v1, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;->YES:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;->NO:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;->UNDEFINED:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;->$VALUES:[Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    const-class v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;->$VALUES:[Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

    invoke-virtual {v0}, [Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

    return-object v0
.end method
