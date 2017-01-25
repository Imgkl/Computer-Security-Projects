.class public final enum Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;
.super Ljava/lang/Enum;
.source "GenieIntentResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GenieIntentResultStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

.field public static final enum ACCEPTED:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

.field public static final enum INVALID:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

.field public static final enum REJECTED:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    new-instance v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    const-string v1, "ACCEPTED"

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;->ACCEPTED:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    .line 87
    new-instance v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    const-string v1, "REJECTED"

    invoke-direct {v0, v1, v3}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;->REJECTED:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    .line 88
    new-instance v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v4}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;->INVALID:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    sget-object v1, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;->ACCEPTED:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;->REJECTED:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;->INVALID:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;->$VALUES:[Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

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
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    const-class v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    return-object v0
.end method

.method public static values()[Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;->$VALUES:[Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    invoke-virtual {v0}, [Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    return-object v0
.end method
