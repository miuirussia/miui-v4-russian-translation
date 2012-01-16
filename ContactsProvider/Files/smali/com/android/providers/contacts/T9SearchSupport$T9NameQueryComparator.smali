.class Lcom/android/providers/contacts/T9SearchSupport$T9NameQueryComparator;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 277
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9NameQueryComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 280
    if-ne p1, p2, :cond_1

    .line 281
    const/4 v0, 0x0

    .line 306
    :cond_0
    :goto_0
    return v0

    .line 284
    :cond_1
    check-cast p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;

    .line 285
    check-cast p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;

    .line 287
    iget v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->hc:I

    iget v1, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->hc:I

    sub-int/2addr v0, v1

    .line 288
    if-eqz v0, :cond_2

    .line 289
    neg-int v0, v0

    goto :goto_0

    .line 292
    :cond_2
    iget-object v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vC:J

    iget-object v2, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v2, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vC:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 293
    if-eqz v0, :cond_3

    .line 294
    neg-int v0, v0

    goto :goto_0

    .line 297
    :cond_3
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->bQ()Ljava/text/Collator;

    move-result-object v0

    iget-object v1, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-object v1, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vA:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-object v2, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vA:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 298
    if-nez v0, :cond_0

    .line 302
    iget-object v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->fs:J

    iget-object v2, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v2, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->fs:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 303
    if-nez v0, :cond_0

    .line 306
    iget-object v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->br:J

    iget-object v2, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v2, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->br:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 277
    check-cast p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    check-cast p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9NameQueryComparator;->a(Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;)I

    move-result v0

    return v0
.end method
