.class Lcom/eventgenie/android/activities/others/search_ui/MyTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "MyTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    .local p0, "this":Lcom/eventgenie/android/activities/others/search_ui/MyTypeAdapter;, "Lcom/eventgenie/android/activities/others/search_ui/MyTypeAdapter<TT;>;"
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lcom/eventgenie/android/activities/others/search_ui/MyTypeAdapter;, "Lcom/eventgenie/android/activities/others/search_ui/MyTypeAdapter<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .param p1, "writer"    # Lcom/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/eventgenie/android/activities/others/search_ui/MyTypeAdapter;, "Lcom/eventgenie/android/activities/others/search_ui/MyTypeAdapter<TT;>;"
    .local p2, "obj":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 23
    :goto_0
    return-void

    .line 22
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    goto :goto_0
.end method
