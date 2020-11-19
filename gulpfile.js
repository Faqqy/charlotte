var gulp           = require('gulp'),
    sass           = require('gulp-sass'),
    browserSync    = require('browser-sync').create(),
    cleanCSS       = require('gulp-clean-css'),
    autoprefixer   = require('gulp-autoprefixer'),
    bourbon        = require('node-bourbon');


gulp.task('browser-sync', function () {

    browserSync.init( {
        proxy: 'charlotte.loc/',
        notify: true
    });
    browserSync.watch('catalog/view/theme/charlotte/', browserSync.reload)
});




gulp.task('sass', function() {
    return gulp.src('catalog/view/theme/charlotte/stylesheet/main.sass')
        .pipe(sass({
            includePaths: bourbon.includePaths
        }).on('error', sass.logError))
        .pipe(autoprefixer())
        .pipe(cleanCSS())
        .pipe(gulp.dest('catalog/view/theme/charlotte/stylesheet/'))
        .pipe(browserSync.reload({stream: true}))
});

gulp.task('watch', function() {
    gulp.watch('catalog/view/theme/charlotte/stylesheet/*.sass', gulp.parallel('sass'));
});


gulp.task('default', gulp.parallel('watch', 'sass', 'browser-sync'));
