.class public Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;
.super Ljava/lang/Object;
.source "ListTagHandler.java"

# interfaces
.implements Landroid/text/Html$TagHandler;


# instance fields
.field first:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;->first:Z

    return-void
.end method


# virtual methods
.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .locals 2
    .param p1, "opening"    # Z
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "output"    # Landroid/text/Editable;
    .param p4, "xmlReader"    # Lorg/xml/sax/XMLReader;

    .prologue
    .line 17
    const-string v1, "li"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "lastChar":C
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 20
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p3, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 21
    :cond_0
    iget-boolean v1, p0, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;->first:Z

    if-eqz v1, :cond_3

    .line 22
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 23
    const-string v1, "\t\u2022  "

    invoke-interface {p3, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 26
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;->first:Z

    .line 31
    .end local v0    # "lastChar":C
    :cond_1
    :goto_1
    return-void

    .line 25
    .restart local v0    # "lastChar":C
    :cond_2
    const-string v1, "\n\t\u2022  "

    invoke-interface {p3, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 28
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;->first:Z

    goto :goto_1
.end method
