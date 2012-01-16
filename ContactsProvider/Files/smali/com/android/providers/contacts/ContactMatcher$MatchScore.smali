.class public Lcom/android/providers/contacts/ContactMatcher$MatchScore;
.super Ljava/lang/Object;
.source "ContactMatcher.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private fs:J

.field private ft:Z

.field private fu:Z

.field private fv:I

.field private fw:I

.field private fx:I


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .parameter

    .prologue
    .line 170
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-wide p1, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fs:J

    .line 172
    return-void
.end method

.method static synthetic a(Lcom/android/providers/contacts/ContactMatcher$MatchScore;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 162
    iput p1, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fv:I

    return p1
.end method

.method static synthetic b(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)Z
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fu:Z

    return v0
.end method

.method static synthetic c(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)I
    .locals 1
    .parameter

    .prologue
    .line 162
    iget v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fw:I

    return v0
.end method

.method static synthetic d(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)J
    .locals 2
    .parameter

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fs:J

    return-wide v0
.end method

.method static synthetic e(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)Z
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->ft:Z

    return v0
.end method

.method static synthetic f(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)I
    .locals 1
    .parameter

    .prologue
    .line 162
    iget v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fv:I

    return v0
.end method


# virtual methods
.method public O(I)V
    .locals 1
    .parameter

    .prologue
    .line 188
    iget v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fv:I

    if-le p1, v0, :cond_0

    .line 189
    iput p1, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fv:I

    .line 191
    :cond_0
    iget v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fx:I

    .line 192
    return-void
.end method

.method public P(I)V
    .locals 1
    .parameter

    .prologue
    .line 195
    iget v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fw:I

    if-le p1, v0, :cond_0

    .line 196
    iput p1, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fw:I

    .line 198
    :cond_0
    iget v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fx:I

    .line 199
    return-void
.end method

.method public a(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)I
    .locals 2
    .parameter

    .prologue
    .line 230
    invoke-virtual {p1}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->bW()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->bW()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bT()J
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fs:J

    return-wide v0
.end method

.method public bU()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->ft:Z

    .line 203
    return-void
.end method

.method public bV()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fu:Z

    .line 207
    return-void
.end method

.method public bW()I
    .locals 2

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fu:Z

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 222
    :goto_0
    return v0

    .line 214
    :cond_0
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->ft:Z

    if-eqz v0, :cond_1

    .line 215
    const/16 v0, 0x64

    goto :goto_0

    .line 218
    :cond_1
    iget v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fv:I

    iget v1, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fw:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fv:I

    .line 222
    :goto_1
    mul-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fx:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 218
    :cond_2
    iget v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fw:I

    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 162
    check-cast p1, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->a(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)I

    move-result v0

    return v0
.end method

.method public p(J)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 175
    iput-wide p1, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fs:J

    .line 176
    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->ft:Z

    .line 177
    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fu:Z

    .line 178
    iput v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fv:I

    .line 179
    iput v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fw:I

    .line 180
    iput v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fx:I

    .line 181
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->fx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
