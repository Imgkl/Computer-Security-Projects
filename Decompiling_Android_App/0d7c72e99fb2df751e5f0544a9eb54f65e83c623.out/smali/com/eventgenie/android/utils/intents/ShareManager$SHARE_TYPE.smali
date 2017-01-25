.class public final enum Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;
.super Ljava/lang/Enum;
.source "ShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/intents/ShareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SHARE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

.field public static final enum TEXT_PLAIN:Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;


# instance fields
.field private final shareType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    const-string v1, "TEXT_PLAIN"

    const-string/jumbo v2, "text/plain"

    invoke-direct {v0, v1, v3, v2}, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->TEXT_PLAIN:Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    sget-object v1, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->TEXT_PLAIN:Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->$VALUES:[Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-object p3, p0, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->shareType:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->$VALUES:[Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    invoke-virtual {v0}, [Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    return-object v0
.end method


# virtual methods
.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->shareType:Ljava/lang/String;

    return-object v0
.end method
