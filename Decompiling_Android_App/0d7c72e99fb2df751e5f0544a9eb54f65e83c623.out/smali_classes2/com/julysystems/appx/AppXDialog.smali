.class Lcom/julysystems/appx/AppXDialog;
.super Ljava/lang/Object;
.source "AppXDialog.java"


# static fields
.field static currentId:I


# instance fields
.field public button:Landroid/widget/Button;

.field public id:I

.field public name:Ljava/lang/String;

.field public options:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, -0x1

    sput v0, Lcom/julysystems/appx/AppXDialog;->currentId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v1, p0, Lcom/julysystems/appx/AppXDialog;->title:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/julysystems/appx/AppXDialog;->name:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/julysystems/appx/AppXDialog;->url:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/julysystems/appx/AppXDialog;->options:Ljava/util/LinkedHashMap;

    .line 14
    iput-object v1, p0, Lcom/julysystems/appx/AppXDialog;->button:Landroid/widget/Button;

    .line 15
    iput-object v1, p0, Lcom/julysystems/appx/AppXDialog;->value:Ljava/lang/String;

    .line 29
    sget v0, Lcom/julysystems/appx/AppXDialog;->currentId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/julysystems/appx/AppXDialog;->currentId:I

    iput v0, p0, Lcom/julysystems/appx/AppXDialog;->id:I

    .line 30
    return-void
.end method


# virtual methods
.method public getItems()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 18
    iget-object v3, p0, Lcom/julysystems/appx/AppXDialog;->options:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 19
    .local v1, "items":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 20
    .local v0, "i":I
    iget-object v3, p0, Lcom/julysystems/appx/AppXDialog;->options:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 24
    return-object v1

    .line 20
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 21
    .local v2, "key":Ljava/lang/String;
    aput-object v2, v1, v0

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
