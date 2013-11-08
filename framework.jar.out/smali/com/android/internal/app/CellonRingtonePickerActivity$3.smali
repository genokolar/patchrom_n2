.class Lcom/android/internal/app/CellonRingtonePickerActivity$3;
.super Ljava/lang/Object;
.source "CellonRingtonePickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/CellonRingtonePickerActivity;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/CellonRingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/CellonRingtonePickerActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity$3;->this$0:Lcom/android/internal/app/CellonRingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity$3;->this$0:Lcom/android/internal/app/CellonRingtonePickerActivity;

    #getter for: Lcom/android/internal/app/CellonRingtonePickerActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->access$200(Lcom/android/internal/app/CellonRingtonePickerActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    return-void
.end method
