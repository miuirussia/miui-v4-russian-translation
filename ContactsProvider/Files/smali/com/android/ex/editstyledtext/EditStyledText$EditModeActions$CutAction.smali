.class public Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$CutAction;
.super Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;
.source "EditStyledText.java"


# instance fields
.field final synthetic ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;


# direct methods
.method public constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V
    .locals 0
    .parameter

    .prologue
    .line 3038
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$CutAction;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    return-void
.end method


# virtual methods
.method protected R()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3041
    invoke-super {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3046
    :goto_0
    return v1

    .line 3044
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$CutAction;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->d(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V

    .line 3045
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$CutAction;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V

    goto :goto_0
.end method
