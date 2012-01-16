.class Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# instance fields
.field private final iQ:Ljava/util/ArrayList;

.field private mCount:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 201
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->iQ:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/ContactAggregator$1;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)I
    .locals 1
    .parameter

    .prologue
    .line 201
    iget v0, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mCount:I

    return v0
.end method

.method static synthetic b(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->iQ:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mCount:I

    .line 221
    return-void
.end method

.method public e(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 209
    iget v0, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mCount:I

    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->iQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->iQ:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;

    invoke-direct {v1, p1, p2}, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :goto_0
    iget v0, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mCount:I

    .line 217
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->iQ:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;

    .line 213
    iput-object p1, v0, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    .line 214
    iput p2, v0, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->bB:I

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
