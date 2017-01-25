.class public final Lcom/eventgenie/android/container/TextItemPair;
.super Ljava/lang/Object;
.source "TextItemPair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/eventgenie/android/container/TextItemPair;, "Lcom/eventgenie/android/container/TextItemPair<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/eventgenie/android/container/TextItemPair;->text:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/eventgenie/android/container/TextItemPair;->item:Ljava/lang/Object;

    .line 39
    return-void
.end method


# virtual methods
.method public getItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/eventgenie/android/container/TextItemPair;, "Lcom/eventgenie/android/container/TextItemPair<TT;>;"
    iget-object v0, p0, Lcom/eventgenie/android/container/TextItemPair;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Lcom/eventgenie/android/container/TextItemPair;, "Lcom/eventgenie/android/container/TextItemPair<TT;>;"
    iget-object v0, p0, Lcom/eventgenie/android/container/TextItemPair;->text:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lcom/eventgenie/android/container/TextItemPair;, "Lcom/eventgenie/android/container/TextItemPair<TT;>;"
    invoke-virtual {p0}, Lcom/eventgenie/android/container/TextItemPair;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
