var gulp = require('gulp'),
    cleanCSS = require('gulp-clean-css'),
    concat = require('gulp-concat'),
    injectfile = require('gulp-inject-file'),
    clean = require('gulp-clean');
 
gulp.task('css-concat-min', function() {
  return gulp.src('./stylesheets/*.css')
    .pipe(concat('merged-min.css'))
    .pipe(cleanCSS({compatibility: 'ie8'}))
    .pipe(gulp.dest('./dist/'));
});

gulp.task('css-inject', function() {
    return gulp.src('./amp/*.html')
            .pipe(injectfile({
                pattern: '<!--\\s*inject:\\s*<filename>-->'
            }))
            .pipe(gulp.dest('./'));
});

gulp.task('clean', function() {
    return gulp.src('./index.html', {read: false})
        .pipe(clean());
});

gulp.task('default', function() {
    gulp.start('css-concat-min', 'clean', 'css-inject');
});
