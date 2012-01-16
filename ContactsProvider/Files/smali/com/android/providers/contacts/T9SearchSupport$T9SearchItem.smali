.class public Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"


# instance fields
.field public br:J

.field public bs:J

.field public fs:J

.field public gs:Ljava/lang/String;

.field public mData:Ljava/lang/String;

.field public vA:Ljava/lang/String;

.field public vB:J

.field public vC:J

.field public vD:Ljava/lang/String;

.field public vE:J

.field public vz:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 140
    return-void
.end method

.method public constructor <init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-wide p1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->bs:J

    .line 158
    iput-wide p3, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->fs:J

    .line 159
    iput-wide p5, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->br:J

    .line 160
    iput-object p7, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mData:Ljava/lang/String;

    .line 161
    iput-object p8, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vz:Ljava/lang/String;

    .line 162
    iput-object p9, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vA:Ljava/lang/String;

    .line 163
    iput-wide p10, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vB:J

    .line 164
    iput-wide p12, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vC:J

    .line 165
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->gs:Ljava/lang/String;

    .line 166
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vD:Ljava/lang/String;

    .line 167
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vE:J

    .line 168
    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->c(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    .line 149
    return-void
.end method


# virtual methods
.method public c(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V
    .locals 2
    .parameter

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 191
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-wide v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->bs:J

    iput-wide v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->bs:J

    .line 181
    iget-wide v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->fs:J

    iput-wide v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->fs:J

    .line 182
    iget-wide v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->br:J

    iput-wide v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->br:J

    .line 183
    iget-object v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mData:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mData:Ljava/lang/String;

    .line 184
    iget-object v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vz:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vz:Ljava/lang/String;

    .line 185
    iget-object v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vA:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vA:Ljava/lang/String;

    .line 186
    iget-wide v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vB:J

    iput-wide v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vB:J

    .line 187
    iget-wide v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vC:J

    iput-wide v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vC:J

    .line 188
    iget-object v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->gs:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->gs:Ljava/lang/String;

    .line 189
    iget-object v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vD:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vD:Ljava/lang/String;

    .line 190
    iget-wide v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vE:J

    iput-wide v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vE:J

    goto :goto_0
.end method
