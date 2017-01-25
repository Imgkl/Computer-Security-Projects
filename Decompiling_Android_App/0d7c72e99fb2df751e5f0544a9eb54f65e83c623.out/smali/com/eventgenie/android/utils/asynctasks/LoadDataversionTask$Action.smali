.class public final enum Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;
.super Ljava/lang/Enum;
.source "LoadDataversionTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;

.field public static final enum LOAD_LAST_PUBLISHED:Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;

.field public static final enum LOAD_LIVE:Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;

.field public static final enum LOAD_SPECIFIC_DATAVERSION:Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;

    const-string v1, "LOAD_LAST_PUBLISHED"

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;->LOAD_LAST_PUBLISHED:Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;

    .line 73
    new-instance v0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;

    const-string v1, "LOAD_LIVE"

    invoke-direct {v0, v1, v3}, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;->LOAD_LIVE:Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;

    .line 74
    new-instance v0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;

    const-string v1, "LOAD_SPECIFIC_DATAVERSION"

    invoke-direct {v0, v1, v4}, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;->LOAD_SPECIFIC_DATAVERSION:Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;

    sget-object v1, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;->LOAD_LAST_PUBLISHED:Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;->LOAD_LIVE:Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;->LOAD_SPECIFIC_DATAVERSION:Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;

    aput-object v1, v0, v4

    sput-object v0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;->$VALUES:[Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    const-class v0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;

    return-object v0
.end method

.method public static values()[Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;->$VALUES:[Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;

    invoke-virtual {v0}, [Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;

    return-object v0
.end method
