.class public final enum Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;
.super Ljava/lang/Enum;
.source "FlickrAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdapterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;

.field public static final enum PICTURES_GALLERY_FULL:Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;

.field public static final enum PICTURES_GRIDVIEW_THUMBS:Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 220
    new-instance v0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;

    const-string v1, "PICTURES_GRIDVIEW_THUMBS"

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;->PICTURES_GRIDVIEW_THUMBS:Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;

    new-instance v0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;

    const-string v1, "PICTURES_GALLERY_FULL"

    invoke-direct {v0, v1, v3}, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;->PICTURES_GALLERY_FULL:Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;

    .line 219
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;

    sget-object v1, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;->PICTURES_GRIDVIEW_THUMBS:Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;->PICTURES_GALLERY_FULL:Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;->$VALUES:[Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;

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
    .line 219
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 219
    const-class v0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;

    return-object v0
.end method

.method public static values()[Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;->$VALUES:[Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;

    invoke-virtual {v0}, [Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;

    return-object v0
.end method
