.class final Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;
.super Lcom/android/providers/contacts/NameLookupBuilder;
.source "ContactAggregator.java"


# instance fields
.field final synthetic jA:Lcom/android/providers/contacts/ContactAggregator;

.field private final ox:Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

.field private oy:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1359
    iput-object p1, p0, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;->jA:Lcom/android/providers/contacts/ContactAggregator;

    .line 1360
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/NameLookupBuilder;-><init>(Lcom/android/providers/contacts/NameSplitter;)V

    .line 1355
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "normalized_name IN("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;->oy:Ljava/lang/StringBuilder;

    .line 1361
    iput-object p3, p0, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;->ox:Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    .line 1362
    return-void
.end method


# virtual methods
.method public K(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 1388
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;->ox:Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    invoke-static {v0}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->a(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1389
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;->ox:Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    invoke-static {v0}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->b(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;->ox:Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    invoke-static {v0}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->b(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;

    iget v0, v0, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->bB:I

    return v0

    .line 1388
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1393
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method protected a(JJILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;->ox:Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    invoke-virtual {v0, p6, p5}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->e(Ljava/lang/String;I)V

    .line 1373
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;->oy:Ljava/lang/StringBuilder;

    invoke-static {v0, p6}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1374
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;->oy:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1375
    return-void
.end method

.method protected c(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;->jA:Lcom/android/providers/contacts/ContactAggregator;

    invoke-static {v0}, Lcom/android/providers/contacts/ContactAggregator;->a(Lcom/android/providers/contacts/ContactAggregator;)Lcom/android/providers/contacts/CommonNicknameCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/CommonNicknameCache;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;->oy:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;->oy:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1383
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;->oy:Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1384
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;->oy:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;->ox:Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->isEmpty()Z

    move-result v0

    return v0
.end method
