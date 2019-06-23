var gulp = require('gulp'),
    cleanCSS = require('gulp-clean-css'),
    concat = require('gulp-concat'),
    inject = require('gulp-inject');

gulp.task('css-concat-min', function(done) {
    console.log('Start CSS min phase');
    gulp.src('stylesheets/*.css')
        .pipe(concat('merged-min.css'))
        .pipe(cleanCSS({compatibility: 'ie8'}))
        .pipe(gulp.dest('./dist/'));
    done();
});

gulp.task('css-inject', function(done) {
    console.log('Start inject phase');
    gulp.src('amp/*.html')
        .pipe(inject(gulp.src(['dist/*.css', 'amp/components/*.html']), {
            starttag: '<!-- inject:{{path}}-->',
            relative: true,
            removeTags: true,
            transform: (filePath, file) => file.contents.toString('utf8')
        }))
        .pipe(gulp.dest('./'));
    done();
});

gulp.task('default', gulp.series('css-concat-min', 'css-inject'))
