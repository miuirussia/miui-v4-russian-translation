.class public Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;
.super Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
.source "T9SearchSupport.java"


# instance fields
.field final synthetic gm:Lcom/android/providers/contacts/T9SearchSupport;

.field public hb:Ljava/util/BitSet;

.field public hc:I


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/T9SearchSupport;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    .line 237
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;-><init>(Lcom/android/providers/contacts/T9SearchSupport;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    .line 238
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->initialize()V

    .line 239
    return-void
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 269
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-object v1, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->gs:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->hb:Ljava/util/BitSet;

    .line 270
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->hc:I

    .line 271
    return-void
.end method


# virtual methods
.method public b(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    .line 248
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->initialize()V

    .line 249
    return-void
.end method

.method public ct()Ljava/lang/String;
    .locals 3

    .prologue
    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-object v1, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->gs:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->hb:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x31

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_0
    const/16 v1, 0x30

    goto :goto_1

    .line 262
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
