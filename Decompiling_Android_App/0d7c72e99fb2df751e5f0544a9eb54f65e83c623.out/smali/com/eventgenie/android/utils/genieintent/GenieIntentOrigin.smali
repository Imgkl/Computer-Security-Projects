.class public final enum Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;
.super Ljava/lang/Enum;
.source "GenieIntentOrigin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

.field public static final enum INTERNAL:Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

.field public static final enum LINK:Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

.field public static final enum UNKNOWN:Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    const-string v1, "LINK"

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;->LINK:Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    .line 35
    new-instance v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;->INTERNAL:Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    .line 36
    new-instance v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;->UNKNOWN:Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    sget-object v1, Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;->LINK:Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;->INTERNAL:Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;->UNKNOWN:Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    aput-object v1, v0, v4

    sput-object v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;->$VALUES:[Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    return-object v0
.end method

.method public static values()[Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;->$VALUES:[Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    invoke-virtual {v0}, [Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    return-object v0
.end method
