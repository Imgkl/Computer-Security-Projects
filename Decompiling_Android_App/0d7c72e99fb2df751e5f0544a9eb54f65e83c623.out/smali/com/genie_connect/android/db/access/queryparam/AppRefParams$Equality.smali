.class public final enum Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;
.super Ljava/lang/Enum;
.source "AppRefParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/db/access/queryparam/AppRefParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Equality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;

.field public static final enum EQUALS:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;

.field public static final enum NOT:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;

    const-string v1, "EQUALS"

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;->EQUALS:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;

    .line 68
    new-instance v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;

    const-string v1, "NOT"

    invoke-direct {v0, v1, v3}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;->NOT:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;

    sget-object v1, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;->EQUALS:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;

    aput-object v1, v0, v2

    sget-object v1, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;->NOT:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;

    aput-object v1, v0, v3

    sput-object v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;->$VALUES:[Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;

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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    const-class v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;->$VALUES:[Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;

    invoke-virtual {v0}, [Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;

    return-object v0
.end method
