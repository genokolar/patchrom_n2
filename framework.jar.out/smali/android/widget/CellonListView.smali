.class public Landroid/widget/CellonListView;
.super Landroid/widget/ListView;
.source "CellonListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "CellonListView"


# instance fields
.field private isFirstItem:Z

.field private isForward:Z

.field private isLongClickable:Z

.field private isReverse:Z

.field private lastItemNum:I

.field private lastSelectY:I

.field private mReversed:Z

.field private obj:Ljava/lang/Object;

.field private originalClickY:I

.field private originalItemNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CellonListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CellonListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x8000

    iput v0, p0, Landroid/widget/CellonListView;->lastSelectY:I

    iput v1, p0, Landroid/widget/CellonListView;->originalClickY:I

    iput v2, p0, Landroid/widget/CellonListView;->lastItemNum:I

    iput v2, p0, Landroid/widget/CellonListView;->originalItemNum:I

    iput-boolean v1, p0, Landroid/widget/CellonListView;->isReverse:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CellonListView;->isForward:Z

    iput-boolean v1, p0, Landroid/widget/CellonListView;->isFirstItem:Z

    iput-boolean v1, p0, Landroid/widget/CellonListView;->isLongClickable:Z

    iput-boolean v1, p0, Landroid/widget/CellonListView;->mReversed:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/CellonListView;->obj:Ljava/lang/Object;

    return-void
.end method

.method private doCheckItemByScroll(II)V
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v5, "doCheckItemByScroll - "

    invoke-direct {p0, v5}, Landroid/widget/CellonListView;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/CellonListView;->pointToPosition(II)I

    move-result v2

    .local v2, itemNum:I
    iget v5, p0, Landroid/widget/CellonListView;->lastItemNum:I

    if-eq v2, v5, :cond_5

    if-ltz v2, :cond_5

    invoke-virtual {p0, v2}, Landroid/widget/CellonListView;->isItemChecked(I)Z

    move-result v1

    .local v1, isCheck:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doCheckItemByScroll - isCheck = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/widget/CellonListView;->log(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/widget/CellonListView;->isReverse(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v8, p0, Landroid/widget/CellonListView;->lastItemNum:I

    iget v5, p0, Landroid/widget/CellonListView;->lastItemNum:I

    invoke-virtual {p0, v5}, Landroid/widget/CellonListView;->isItemChecked(I)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v6

    :goto_0
    invoke-virtual {p0, v8, v5}, Landroid/widget/CellonListView;->setItemCheckedNoRequestLayout(IZ)V

    iput-boolean v6, p0, Landroid/widget/CellonListView;->mReversed:Z

    :cond_0
    iget v5, p0, Landroid/widget/CellonListView;->lastItemNum:I

    const/4 v8, -0x1

    if-eq v5, v8, :cond_4

    iget v5, p0, Landroid/widget/CellonListView;->lastItemNum:I

    sub-int v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v5, v6, :cond_3

    iget v5, p0, Landroid/widget/CellonListView;->lastItemNum:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .local v4, min:I
    iget v5, p0, Landroid/widget/CellonListView;->lastItemNum:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .local v3, max:I
    add-int/lit8 v0, v4, 0x1

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/CellonListView;->isItemChecked(I)Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    :goto_2
    invoke-virtual {p0, v0, v5}, Landroid/widget/CellonListView;->setItemCheckedNoRequestLayout(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v3           #max:I
    .end local v4           #min:I
    :cond_1
    move v5, v7

    goto :goto_0

    .restart local v0       #i:I
    .restart local v3       #max:I
    .restart local v4       #min:I
    :cond_2
    move v5, v7

    goto :goto_2

    .end local v0           #i:I
    .end local v3           #max:I
    .end local v4           #min:I
    :cond_3
    if-nez v1, :cond_6

    :goto_3
    invoke-virtual {p0, v2, v6}, Landroid/widget/CellonListView;->setItemChecked(IZ)V

    :cond_4
    iput p2, p0, Landroid/widget/CellonListView;->lastSelectY:I

    iput v2, p0, Landroid/widget/CellonListView;->lastItemNum:I

    .end local v1           #isCheck:Z
    :cond_5
    return-void

    .restart local v1       #isCheck:Z
    :cond_6
    move v6, v7

    goto :goto_3
.end method

.method private isReverse(I)Z
    .locals 4
    .parameter "itemNum"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReverse - itemNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/CellonListView;->log(Ljava/lang/String;)V

    iput-boolean v0, p0, Landroid/widget/CellonListView;->isReverse:Z

    iget v1, p0, Landroid/widget/CellonListView;->lastItemNum:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Landroid/widget/CellonListView;->originalItemNum:I

    if-lt p1, v1, :cond_7

    iget v1, p0, Landroid/widget/CellonListView;->lastItemNum:I

    if-le p1, v1, :cond_5

    iget-boolean v1, p0, Landroid/widget/CellonListView;->isForward:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/CellonListView;->isFirstItem:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Landroid/widget/CellonListView;->isForward:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/widget/CellonListView;->isFirstItem:Z

    if-eqz v1, :cond_3

    :cond_2
    iput-boolean v3, p0, Landroid/widget/CellonListView;->isReverse:Z

    :cond_3
    iput-boolean v3, p0, Landroid/widget/CellonListView;->isForward:Z

    :cond_4
    :goto_1
    iput-boolean v0, p0, Landroid/widget/CellonListView;->isFirstItem:Z

    iget-boolean v0, p0, Landroid/widget/CellonListView;->isReverse:Z

    goto :goto_0

    :cond_5
    iget v1, p0, Landroid/widget/CellonListView;->lastItemNum:I

    if-ge p1, v1, :cond_4

    iget-boolean v1, p0, Landroid/widget/CellonListView;->isForward:Z

    if-eqz v1, :cond_6

    iput-boolean v3, p0, Landroid/widget/CellonListView;->isReverse:Z

    :cond_6
    iput-boolean v0, p0, Landroid/widget/CellonListView;->isForward:Z

    goto :goto_1

    :cond_7
    iget v1, p0, Landroid/widget/CellonListView;->originalItemNum:I

    if-ge p1, v1, :cond_4

    iget v1, p0, Landroid/widget/CellonListView;->lastItemNum:I

    if-ge p1, v1, :cond_9

    iget-boolean v1, p0, Landroid/widget/CellonListView;->isForward:Z

    if-eqz v1, :cond_8

    iput-boolean v3, p0, Landroid/widget/CellonListView;->isReverse:Z

    :cond_8
    iput-boolean v0, p0, Landroid/widget/CellonListView;->isForward:Z

    goto :goto_1

    :cond_9
    iget v1, p0, Landroid/widget/CellonListView;->lastItemNum:I

    if-le p1, v1, :cond_4

    iget-boolean v1, p0, Landroid/widget/CellonListView;->isForward:Z

    if-nez v1, :cond_a

    iput-boolean v3, p0, Landroid/widget/CellonListView;->isReverse:Z

    :cond_a
    iput-boolean v3, p0, Landroid/widget/CellonListView;->isForward:Z

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v2, "onTouchEvent - "

    invoke-direct {p0, v2}, Landroid/widget/CellonListView;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/CellonListView;->getItemsCanFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .local v1, y:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouchEvent - x = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", y = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/CellonListView;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_DOWN - (x>= getWidth()*5/6) is: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/widget/CellonListView;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x6

    if-lt v0, v2, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/CellonListView;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/CellonListView;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x6

    if-lt v0, v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/CellonListView;->isLongClickable()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/CellonListView;->isLongClickable:Z

    iput-boolean v4, p0, Landroid/widget/CellonListView;->canScroll:Z

    iput v1, p0, Landroid/widget/CellonListView;->originalClickY:I

    const/high16 v2, -0x8000

    iput v2, p0, Landroid/widget/CellonListView;->lastSelectY:I

    iput-boolean v4, p0, Landroid/widget/CellonListView;->isReverse:Z

    iput-boolean v3, p0, Landroid/widget/CellonListView;->isForward:Z

    invoke-virtual {p0, v0, v1}, Landroid/widget/CellonListView;->pointToPosition(II)I

    move-result v2

    iput v2, p0, Landroid/widget/CellonListView;->originalItemNum:I

    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/CellonListView;->lastItemNum:I

    iput-boolean v3, p0, Landroid/widget/CellonListView;->isFirstItem:Z

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    iput-boolean v3, p0, Landroid/widget/CellonListView;->canScroll:Z

    goto :goto_1

    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_UP - canScroll = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Landroid/widget/CellonListView;->canScroll:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", (x>= getWidth()*5/6) is: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/CellonListView;->getWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    div-int/lit8 v5, v5, 0x6

    if-lt v0, v5, :cond_4

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/CellonListView;->log(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/widget/CellonListView;->canScroll:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/CellonListView;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x6

    if-lt v0, v2, :cond_1

    iget-object v3, p0, Landroid/widget/CellonListView;->obj:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, v0, v1}, Landroid/widget/CellonListView;->doCheckItemByScroll(II)V

    monitor-exit v3

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_4
    move v3, v4

    goto :goto_3

    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_UP - (x>= getWidth()*5/6) is: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/widget/CellonListView;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x6

    if-lt v0, v2, :cond_6

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/CellonListView;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/CellonListView;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x6

    if-lt v0, v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_UP: originalItemNum == pointToPosition(x, y) is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v2, p0, Landroid/widget/CellonListView;->originalItemNum:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/CellonListView;->pointToPosition(II)I

    move-result v6

    if-ne v2, v6, :cond_7

    move v2, v3

    :goto_5
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", mReversed = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Landroid/widget/CellonListView;->mReversed:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/CellonListView;->log(Ljava/lang/String;)V

    iget v2, p0, Landroid/widget/CellonListView;->originalItemNum:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/CellonListView;->pointToPosition(II)I

    move-result v5

    if-ne v2, v5, :cond_5

    iget-boolean v2, p0, Landroid/widget/CellonListView;->isLongClickable:Z

    invoke-virtual {p0}, Landroid/widget/CellonListView;->isLongClickable()Z

    move-result v5

    if-ne v2, v5, :cond_5

    iget-boolean v2, p0, Landroid/widget/CellonListView;->mReversed:Z

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "originalItemNum = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroid/widget/CellonListView;->originalItemNum:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "is item checked: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroid/widget/CellonListView;->originalItemNum:I

    invoke-virtual {p0, v5}, Landroid/widget/CellonListView;->isItemChecked(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/CellonListView;->log(Ljava/lang/String;)V

    iget v5, p0, Landroid/widget/CellonListView;->originalItemNum:I

    iget v2, p0, Landroid/widget/CellonListView;->originalItemNum:I

    invoke-virtual {p0, v2}, Landroid/widget/CellonListView;->isItemChecked(I)Z

    move-result v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_6
    invoke-virtual {p0, v5, v2}, Landroid/widget/CellonListView;->setItemChecked(IZ)V

    :cond_5
    iput-boolean v3, p0, Landroid/widget/CellonListView;->canScroll:Z

    iput-boolean v4, p0, Landroid/widget/CellonListView;->mReversed:Z

    goto/16 :goto_1

    :cond_6
    move v2, v4

    goto/16 :goto_4

    :cond_7
    move v2, v4

    goto :goto_5

    :cond_8
    move v2, v4

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setItemCheckedNoRequestLayout(IZ)V
    .locals 9
    .parameter "position"
    .parameter "value"

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x0

    const/4 v8, 0x1

    iget v1, p0, Landroid/widget/CellonListView;->mChoiceMode:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget v1, p0, Landroid/widget/CellonListView;->mChoiceMode:I

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Landroid/widget/CellonListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/CellonListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/widget/CellonListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/CellonListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_2
    iget v1, p0, Landroid/widget/CellonListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget v1, p0, Landroid/widget/CellonListView;->mChoiceMode:I

    if-ne v1, v5, :cond_9

    :cond_3
    iget-object v0, p0, Landroid/widget/CellonListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .local v6, oldValue:Z
    iget-object v0, p0, Landroid/widget/CellonListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Landroid/widget/CellonListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/CellonListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_7

    iget-object v0, p0, Landroid/widget/CellonListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/CellonListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_4
    :goto_1
    if-eq v6, p2, :cond_5

    if-eqz p2, :cond_8

    iget v0, p0, Landroid/widget/CellonListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/CellonListView;->mCheckedItemCount:I

    :cond_5
    :goto_2
    iget-object v0, p0, Landroid/widget/CellonListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/CellonListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .local v3, id:J
    iget-object v0, p0, Landroid/widget/CellonListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Landroid/widget/CellonListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .end local v3           #id:J
    .end local v6           #oldValue:Z
    :cond_6
    :goto_3
    iget-boolean v0, p0, Landroid/widget/CellonListView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/CellonListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iput-boolean v8, p0, Landroid/widget/CellonListView;->mDataChanged:Z

    invoke-virtual {p0}, Landroid/widget/CellonListView;->rememberSyncState()V

    goto :goto_0

    .restart local v6       #oldValue:Z
    :cond_7
    iget-object v0, p0, Landroid/widget/CellonListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/CellonListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    :cond_8
    iget v0, p0, Landroid/widget/CellonListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/CellonListView;->mCheckedItemCount:I

    goto :goto_2

    .end local v6           #oldValue:Z
    :cond_9
    iget-object v1, p0, Landroid/widget/CellonListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/widget/CellonListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_d

    move v7, v8

    .local v7, updateIds:Z
    :goto_4
    if-nez p2, :cond_a

    invoke-virtual {p0, p1}, Landroid/widget/CellonListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    iget-object v1, p0, Landroid/widget/CellonListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    if-eqz v7, :cond_b

    iget-object v1, p0, Landroid/widget/CellonListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    :cond_b
    if-eqz p2, :cond_e

    iget-object v0, p0, Landroid/widget/CellonListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz v7, :cond_c

    iget-object v0, p0, Landroid/widget/CellonListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/CellonListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_c
    iput v8, p0, Landroid/widget/CellonListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v7           #updateIds:Z
    :cond_d
    move v7, v0

    goto :goto_4

    .restart local v7       #updateIds:Z
    :cond_e
    iget-object v1, p0, Landroid/widget/CellonListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/widget/CellonListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_f
    iput v0, p0, Landroid/widget/CellonListView;->mCheckedItemCount:I

    goto :goto_3
.end method
